#include <cppconn/driver.h>
#include <cppconn/exception.h>
#include <cppconn/statement.h>
#include <iostream>
#include <mysql_connection.h>
#include <mysql_driver.h>

using namespace std;

class BloodCode {
public:
    string name; // name of the Blood Code
    string strength; // the Blood Code's base Strength proficiency
    string dexterity; // the Blood Code's base Dexterity proficiency
    string mind; // the Blood Code's base Mind proficiency
    string willpower; // the Blood Code's base Willpower proficiency
    string vitality; // the Blood Code's base Vitality proficiency
    string fortitude; // the Blood Code's base Fortitude proficiency
    string ichor; // the Blood Code's minimum and maximum amount of ichor
    int balance; // the Blood Code's balance value
    string mobility; // the Blood Code's base Mobility
    int weight; // the Blood Code's weight value
    
    // Outputs basic info about the Blood Code
    void simpleOutput() const {
        cout << "Name: " + name + "\n";
        cout << "Base Mobility: " + mobility + "\n";
        cout << "Starting Ichor Cap: " + ichor.substr(0,2) + "\n";
        cout << "Maximum Ichor Cap: " + ichor.substr(3,2) + "\n";
        
    }
    
    // Outputs a detailed overview about the Blood Code
    void detailedOutput() const {
        simpleOutput();
        cout << "Base Strength Proficiency: " + strength << +"\n";
        cout << "Base Dexterity Proficiency: " + dexterity + "\n";
        cout << "Base Mind Proficiency: " + mind + "\n";
        cout << "Base Willpower Proficiency: " + willpower + "\n";
        cout << "Base Vitality Proficiency: " + vitality + "\n";
        cout << "Base Fortitude Proficiency: " + fortitude + "\n";
        cout << "Base Balance Value: " + to_string(balance) + "\n";
        cout << "Weight Limit: " + to_string(weight) + "\n";
    }
};

class Companion {
public:
    string name; // name of the Companion
    string bloodVeil; // the Companion's Blood Veil type
    string weaponType; // the Companion's weapon type

    // Outputs basic info about the Companion
    void simpleOutput() const {
        cout << "Name: " + name + "\n";
    }

    // Outputs a detailed overview about the Companion
    void detailedOutput() const {
        simpleOutput();
        cout << "Blood Veil Type Equipped: " + bloodVeil + "\n";
        cout << "Weapon Type Equipped: " + weaponType + "\n";
    }
};

class PassiveGift {
public:
    string name; // name of the passive gift
    string tree; // type of gift
    string origin; // blood code origin (if applicable)
    bool incStr; // identifies if Strength is boosted one level
    bool incDex; // identifies if Dexterity is boosted one level
    bool incMnd; // identifies if Mind is boosted one level
    bool incWil; // identifies if Willpower is boosted one level
    bool incVit; // identifies if Vitality is boosted one level
    bool incFor; // identifies if Fortitude is boosted one level
    bool exclusive; // identifies if the gift is exclusive to its blood code

    // Outputs the Passive Gift
    void output() const {
        cout << "Name: " + name + "\n"; 
        cout << "Tree: " + tree + "\n";
        if (origin != "") {
            cout << "Blood Code origin: " + origin + "\n";
            if (exclusive) {
                cout << "***Exclusive to " + origin + "***\n";
            }
        }
    }
};

class BloodVeil {
public:
    string name; // name of the blood veil
    string type; // type of blood veil
    string reqStr; // required Strength proficiency to equip (if applicable)
    string reqDex; // required Dexterity proficiency to equip (if applicable)
    string reqMnd; // required Mind proficiency to equip (if applicable)
    string reqWil; // required Willpower proficiency to equip (if applicable)
    string strScal; // Strength stat scaling value (if applicable)
    string dexScal; // Dexterity stat scaling value (if applicable)
    string mndScal; // Mind stat scaling value (if applicable)
    string wilScal; // Willpower stat scaling value (if applicable)
    int weight; // Weight of the BloodVeil

    // Outputs basic info about the Blood Veil
    void simpleOutput() const {
        cout << "Name: " + name + "\n";
        cout << "Type of Blood Veil: " + type + "\n";
    }

    // Outputs a detailed overview about the Blood Veil
    void detailedOutput() const {
        simpleOutput();
        string stats[4] = { "Strength", "Dexterity", "Mind", "Willpower" };
        string statReqs[4] = { reqStr, reqDex, reqMnd, reqWil };
        string statScal[4] = { strScal, dexScal, mndScal, wilScal };
        for (int i = 0; i < 4; i++) {
            if (statReqs[i] != "-") {
                cout << stats[i] + " Required to Equip: " + statReqs[i] + "\n";
            }
        }
        for (int i = 0; i < 4; i++) {
            if (statScal[i] != "-") {
                cout << stats[i] + " Scaling: " + statScal[i] + "\n";
            }
        }
        cout << "Weight: " + to_string(weight) + "\n";
    }
};

class Weapon {
public:
    string name; // name of the weapon
    string type; // type of weapon
    string reqStr; // required Strength proficiency to equip (if applicable)
    string reqDex; // required Dexterity proficiency to equip (if applicable)
    string reqMnd; // required Mind proficiency to equip (if applicable)
    string reqWil; // required Willpower proficiency to equip (if applicable)
    string strScal; // Strength stat scaling value (if applicable)
    string dexScal; // Dexterity stat scaling value (if applicable)
    string mndScal; // Mind stat scaling value (if applicable)
    string wilScal; // Willpower stat scaling value (if applicable)
    int weight; // weight of the weapon

    // Outputs basic info about the weapon
    void simpleOutput() const {
        cout << "Name: " + name + "\n";
        cout << "Type of Weapon: " + type + "\n";
    }

    // Outputs a detailed overview about the weapon
    void detailedOutput() const {
        simpleOutput();
        string stats[4] = { "Strength", "Dexterity", "Mind", "Willpower" };
        string statReqs[4] = { reqStr, reqDex, reqMnd, reqWil };
        string statScal[4] = { strScal, dexScal, mndScal, wilScal };
        for (int i = 0; i < 4; i++) {
            if (statReqs[i] != "-") {
                cout << stats[i] + " Required to Equip: " + statReqs[i] + "\n";
            }
        }
        for (int i = 0; i < 4; i++) {
            if (statScal[i] != "-") {
                cout << stats[i] + " Scaling: " + statScal[i] + "\n";
            }
        }
        cout << "Weight: " + to_string(weight) + "\n";
    }
};

class ActiveGift {
public:
    string name; // name of the active gift
    string tree; // type of gift
    string origin; // blood code origin (if applicable)
    string reqStr; // required Strength proficiency to equip (if applicable)
    string reqDex; // required Dexterity proficiency to equip (if applicable)
    string reqMnd; // required Mind proficiency to equip (if applicable)
    string reqWil; // required Willpower proficiency to equip (if applicable)
    string reqVit; // required Vitality proficiency to equip (if applicable)
    string reqFor; // required Fortitude proficiency to equip (if applicable)
    bool exclusive; // identifies if the gift is exclusive to its blood code
    string reqComp; // required companion to equip (if applicable)
    bool reqOHSw; // identifies if a One-Handed Sword weapon type is required to equip
    bool reqTHSw; // identifies if a Two-Handed Sword weapon type is required to equip
    bool reqSpHalPol; // identifies if a Spear/Halberd/Polearm weapon type is required to equip
    bool reqTHHam; // identifies if a Two-Handed Hammer weapon type is required to equip
    bool reqBayoRif; // identifies if a Bayonet Rifle weapon type is required to equip

    void format() {
        if (reqStr == "") {
            reqStr = "-";
        }
        if (reqDex == "") {
            reqDex = "-";
        }
        if (reqMnd == "") {
            reqMnd = "-";
        }
        if (reqWil == "") {
            reqWil = "-";
        }
        if (reqVit == "") {
            reqVit = "-";
        }
        if (reqFor == "") {
            reqFor = "-";
        }
    }

    void simpleOutput() {
        format();
        cout << "Name: " + name + "\n";
        cout << "Tree: " + tree + "\n";
        cout << "Origin: " + origin + "\n";
        if (exclusive) {
            cout << "***Exclusive to " + origin + "***\n";
        }
        else if (reqComp != "") {
            cout << "***Communal Gift with " + reqComp + "***\n";
        }
    }

    void detailedOutput(string wpnTypes[5]) {
        simpleOutput();
        if (!exclusive && reqComp == "") {
            string stats[6] = { "Strength", "Dexterity", "Mind", "Willpower", "Vitality", "Fortitude" };
            string statReqs[6] = { reqStr, reqDex, reqMnd, reqWil, reqVit, reqFor };
            for (int i = 0; i < 6; i++) {
                if (statReqs[i] != "-") {
                    cout << stats[i] + " Required to Cast: " + statReqs[i] + "\n";
                }
            }
            if (reqOHSw || reqTHSw || reqSpHalPol || reqTHHam || reqBayoRif) {
                cout << "***Weapon Skill that Requires ";
                bool wpnReqs[5] = { reqOHSw, reqTHSw, reqSpHalPol, reqTHHam, reqBayoRif };
                int count = 0;
                for (int i = 0; i < 5; i++) {
                    if (wpnReqs[i]) {
                        if (count > 0) {
                            cout << "/";
                        }
                        cout << wpnTypes[i];
                        count++;
                    }
                }
                cout << "***\n";
            }
        }
    }
};

// A class that represents a possible build that can be used in Code Vein
class Build {
public:
    BloodCode bloodCode; // randomly selected Blood Code
    string strength; // Strength proficiency
    string dexterity; // Dexterity proficiency
    string mind; // Mind proficiency
    string willpower; // Willpower proficiency
    string vitality; // Vitality proficiency
    string fortitude; // Fortitude proficiency
    Companion companion; // randomly selected Companion
    vector<PassiveGift> passiveGifts; // vector(list) of 4 randomly selected Passive Gifts
    BloodVeil bloodVeil; // randomly selected Blood Veil
    vector<Weapon> weapons; // vector(list) of 2 randomly selected Weapons
    vector<ActiveGift> activeGifts; // vector(list) of 8 randomly selected Active Gifts

    // Outputs the stats of the Build
    void outputStats() {
        cout << "Strength: " + strength + "\n";
        cout << "Dexterity: " + dexterity + "\n";
        cout << "Mind: " + mind + "\n";
        cout << "Willpower: " + willpower + "\n";
        cout << "Vitality: " + vitality + "\n";
        cout << "Fortitude: " + fortitude + "\n";
    }

    void output() {
        cout << "###Random Code Vein Build###\n\n---Blood Code---\n";
        bloodCode.simpleOutput();
        cout << "\n---Companion---\n";
        companion.simpleOutput();
        cout << "\n---Blood Veil---\n";
        bloodVeil.simpleOutput();
        cout << "\n+++Weapons+++";
        for (int i = 0; i < weapons.size(); i++) {
            cout << "\n---Weapon #" + to_string(i + 1) + "---\n";
            weapons[i].simpleOutput();
        }
        cout << "\n+++Passive Gifts+++";
        for (int i = 0; i < passiveGifts.size(); i++) {
            cout << "\n---Passive Gift #" + to_string(i + 1) + "---\n";
            passiveGifts[i].output();
        }
        cout << "\n+++Active Gifts+++";
        for (int i = 0; i < activeGifts.size(); i++) {
            cout << "\n---Active Gift #" + to_string(i + 1) + "---\n";
            activeGifts[i].simpleOutput();
        }
    }
};

//Class that randomly generates a build based on Code Vein data
class RandomBuildGenerator {
public:
    sql::mysql::MySQL_Driver* driver;
    sql::Connection* con;
    sql::Statement* stmt;
    Build build; // the player build to be randomly generated
    string proficiency[14] = { "E", "E+", "D", "D+", "C", "C+", "B", "B+", "A", "A+", "S", "S+", "SS", "SS+"};
    RandomBuildGenerator() {
        driver = sql::mysql::get_mysql_driver_instance();
        con = driver->connect("tcp://localhost:3306", "root", "jmaniago");
        con->setSchema("code_vein_db"); // your database name
        stmt = con->createStatement();
        cout << "RANDOM BUILD GENERATOR CREATED\n\n";
    }

    // Generates a vector of all the Blood Codes and assigns one at random as the Build's Blood Code
    void genBC() {
        vector<BloodCode> bCodes; // The list that will have all Blood Codes
        sql::ResultSet* res = stmt->executeQuery("SELECT * FROM blood_codes");

        // Loop through the table of blood codes and stores each row as a BloodCode object
        while (res->next()) {
            BloodCode bc;
            bc.name = res->getString("BC_Name");
            bc.strength = res->getString("Strength");
            bc.dexterity = res->getString("Dexterity");
            bc.mind = res->getString("Mind");
            bc.willpower = res->getString("Willpower");
            bc.vitality = res->getString("Vitality");
            bc.fortitude = res->getString("Fortitude");
            bc.ichor = res->getString("Ichor");
            bc.balance = res->getInt("Balance");
            bc.mobility = res->getString("Mobility");
            bc.weight = res->getInt("BC_Weight");
            bCodes.push_back(bc);
        }

        // Assigns a random Blood Code as the Build's Blood Code
        srand(time(0));
        int index = rand() % bCodes.size();
        build.bloodCode = bCodes[index];
        cout << "BLOOD CODE GENERATED\n";
        build.bloodCode.detailedOutput();
    }

    void storeStats() {
        build.strength = build.bloodCode.strength;
        build.dexterity = build.bloodCode.dexterity;
        build.mind = build.bloodCode.mind;
        build.willpower = build.bloodCode.willpower;
        build.vitality = build.bloodCode.vitality;
        build.fortitude = build.bloodCode.fortitude;
    }
    
    // Generates a list of all the Companions and assigns one at random as the Build's Companion
    void genComp() {
        vector<Companion> comps; // The list that will have all Companions
        sql::ResultSet* res = stmt->executeQuery("SELECT * FROM companions");

        // Loop through the table of Companions and stores each row as a Companion object
        while (res->next()) {
            Companion comp;
            comp.name = res->getString("CompanionName");
            comp.bloodVeil = res->getString("BloodVeil");
            comp.weaponType = res->getString("WeaponType");
            comps.push_back(comp);
        }

        // Assigns a random Companion as the Build's Companion
        srand(time(0));
        int index = rand() % comps.size();
        build.companion = comps[index];
        cout << "COMPANION GENERATED\n";
        build.companion.detailedOutput();
    }

    // Generates a list of all the Passive Gifts available to the generated Blood Code and assigns four at random as the Build's Passive Gifts
    void genPasGift() {
        vector<PassiveGift> pgs; // The list that will have all valid PassiveGifts
        sql::ResultSet* res = stmt->executeQuery("SELECT * FROM passive_gifts");

        // Loop through the table of Passive Gifts and stores each valid row as a PassiveGift object
        while (res->next()) {
            string origin = res->getString("BC_Origin");
            bool exclusive = res->getInt("Exclusive") == 1;

            if (!exclusive || origin == build.bloodCode.name) {
                PassiveGift pg;
                pg.name = res->getString("GiftName");
                pg.tree = res->getString("GiftTree");
                pg.origin = origin;
                pg.incStr = res->getInt("IncStr") == 1;
                pg.incDex = res->getInt("IncDex") == 1;
                pg.incMnd = res->getInt("IncMnd") == 1;
                pg.incWil = res->getInt("IncWil") == 1;
                pg.incVit = res->getInt("IncVit") == 1;
                pg.incFor = res->getInt("IncFor") == 1;
                pg.exclusive = exclusive;
                pgs.push_back(pg);
            }
        }
        // Assigns 4 random PassiveGifts as the Build's Passive Gifts
        srand(time(0));
        for (int i = 0; i < 4; i++) {
            int index = rand() % pgs.size();
            build.passiveGifts.push_back(pgs[index]);
            pgs.erase(pgs.begin() + index);
            cout << "PASSIVE GIFT #" + to_string(i + 1) + " GENERATED\n";
            build.passiveGifts[i].output();
            cout << endl;
        }
    }
    
    bool passBuffStats() {
        // stores the initial stats of the generated Blood Code into an array
        string stats[6] = { build.strength, build.dexterity, build.mind, build.willpower, build.vitality, build.fortitude };
        int statVal[6]; // initializes the array of numerical values representing the initial stats of the generated Blood Code
        bool statUp = false; // represents if one or more stats are increased by Passive Gifts

        // stores the array of numerical values representing the initial stats of the generated Blood Code into statVal
        for (int i = 0; i < 6; i++) {
            for (int j = 0; j < 14; j++) {
                if (stats[i] == proficiency[j]) {
                    statVal[i] = j;
                    break;
                }
            }
        }

        // increases the numerical value of the corresponding stats based on the generated Passive Gifts
        for (PassiveGift pg : build.passiveGifts) {
            bool pgBuffs[6] = { pg.incStr, pg.incDex, pg.incMnd, pg.incWil, pg.incVit, pg.incFor };
            for (int i = 0; i < 6; i++) {
                if (pgBuffs[i]) {
                    statVal[i] = statVal[i]++;
                    statUp = true;
                }
            }
        }

        if (statUp) {
            // updates the stats of the Build to match its numerical value
            build.strength = proficiency[statVal[0]];
            build.dexterity = proficiency[statVal[1]];
            build.mind = proficiency[statVal[2]];
            build.willpower = proficiency[statVal[3]];
            build.vitality = proficiency[statVal[4]];
            build.fortitude = proficiency[statVal[5]];

            cout << "STATS INCREASED BY PASSIVE GIFTS\n";
            build.outputStats();
        }

        return statUp;
    }
    
    // Generates a list of all the Blood Veils available with the given stats and assigns one as the Build's Blood Veil
    void genBV() {
        vector<BloodVeil> bvs; // The list that will have all valid BloodVeils
        sql::ResultSet* res = stmt->executeQuery("SELECT * FROM blood_veils");

        // Loop through the table of Blood Veils and stores each valid row as a BloodVeil object
        while (res->next()) {
            string reqStr = res->getString("ReqStr");
            string reqDex = res->getString("ReqDex");
            string reqMnd = res->getString("ReqMnd");
            string reqWil = res->getString("ReqWil");
            string reqs[4] = { reqStr, reqDex, reqMnd, reqWil };
            string stats[4] = { build.strength, build.dexterity, build.mind, build.willpower };
            bool prof = true;
            
            for (int i = 0; i < 4; i++) {
                for (int j = 0; j < 14; j++) {
                    if (reqs[i] == "" || reqs[i] == "-" || reqs[i] == proficiency[j]) {
                        break;
                    }
                    else if (stats[i] == proficiency[j]) {
                        prof = false;
                        break;
                    }
                }
                if (!prof) {
                    break;
                }
            }

            if (prof) {
                BloodVeil bv;
                bv.name = res->getString("BV_Name");
                bv.type = res->getString("BV_Type");
                bv.reqStr = reqStr;
                bv.reqDex = reqDex;
                bv.reqMnd = reqMnd;
                bv.reqWil = reqWil;
                bv.strScal = res->getString("StrScal");
                bv.dexScal = res->getString("DexScal");
                bv.mndScal = res->getString("MndScal");
                bv.wilScal = res->getString("WilScal");
                bv.weight = res->getInt("BV_Weight");
                bvs.push_back(bv);
            }
        }
        // Assigns a random BloodVeil as the Build's Blood Veil
        srand(time(0));
        int index = rand() % bvs.size();
        build.bloodVeil = bvs[index];
        cout << "BLOOD VEIL GENERATED\n";
        build.bloodVeil.detailedOutput();
    }

    // Generates a list of all the Weapons available with the given stats and assigns two as the Build's Weapons
    void genWP() {
        vector<Weapon> wpns; // The list that will have all valid Weapons
        sql::ResultSet* res = stmt->executeQuery("SELECT * FROM weapons");

        // Loop through the table of Weapons and stores each valid row as a Weapon object
        while (res->next()) {
            string reqStr = res->getString("ReqStr");
            string reqDex = res->getString("ReqDex");
            string reqMnd = res->getString("ReqMnd");
            string reqWil = res->getString("ReqWil");
            string reqs[4] = { reqStr, reqDex, reqMnd, reqWil };
            string stats[4] = { build.strength, build.dexterity, build.mind, build.willpower };
            bool prof = true;

            for (int i = 0; i < 4; i++) {
                for (int j = 0; j < 14; j++) {
                    if (reqs[i] == "" || reqs[i] == "-" || reqs[i] == proficiency[j]) {
                        break;
                    }
                    else if (stats[i] == proficiency[j]) {
                        prof = false;
                        break;
                    }
                }
                if (!prof) {
                    break;
                }
            }

            if (prof) {
                Weapon wpn;
                wpn.name = res->getString("WP_Name");
                wpn.type = res->getString("WP_Type");
                wpn.reqStr = reqStr;
                wpn.reqDex = reqDex;
                wpn.reqMnd = reqMnd;
                wpn.reqWil = reqWil;
                wpn.strScal = res->getString("StrScal");
                wpn.dexScal = res->getString("DexScal");
                wpn.mndScal = res->getString("MndScal");
                wpn.wilScal = res->getString("WilScal");
                wpn.weight = res->getInt("WP_Weight");
                wpns.push_back(wpn);
            }
        }
        // Assigns 2 random Weapons as the Build's Weapons
        srand(time(0));
        for (int i = 0; i < 2; i++) {
            int index = rand() % wpns.size();
            build.weapons.push_back(wpns[index]);
            wpns.erase(wpns.begin() + index);
            cout << "WEAPON #" + to_string(i + 1) + " GENERATED\n";
            build.weapons[i].detailedOutput();
            cout << endl;
        }
    }

    // Generates a list of all the Active Gifts available with the given Blood Code, Companion, and stats and assigns eight as the Build's Active Gifts
    void genActGift() {
        vector<ActiveGift> ags; // The list that will have all valid Active Gifts
        sql::ResultSet* res = stmt->executeQuery("SELECT * FROM active_gifts");
        string wpnTypes[5] = { "One-Handed Swords", "Two-Handed Swords", "Spears/Halberds/Polearms", "Two-Handed Hammers", "Bayonet Rifles" };
        // Loop through the table of Active Gifts and stores each valid row as an ActiveGift object
        while (res->next()) {
            ActiveGift ag;
            ag.name = res->getString("GiftName");
            ag.tree = res->getString("GiftTree");
            ag.origin = res->getString("BC_Origin");
            ag.reqStr = res->getString("ReqStr");
            ag.reqDex = res->getString("ReqDex");
            ag.reqMnd = res->getString("ReqMnd");
            ag.reqWil = res->getString("ReqWil");
            ag.reqVit = res->getString("ReqVit");
            ag.reqFor = res->getString("ReqFor");
            ag.exclusive = res->getInt("Exclusive") == 1;
            ag.reqComp = res->getString("ReqComp");
            ag.reqOHSw = res->getInt("ReqOHSw") == 1;
            ag.reqTHSw = res->getInt("ReqTHSw") == 1;
            ag.reqSpHalPol = res->getInt("ReqSpHalPol") == 1;
            ag.reqTHHam = res->getInt("ReqTHHam") == 1;
            ag.reqBayoRif = res->getInt("ReqBayoRif") == 1;
            
            // Checks if the Active Gift is valid from being exclusive to the generated Blood Code OR from travelling with the required Companion
            if ((ag.exclusive && ag.origin == build.bloodCode.name) || (ag.reqComp == build.companion.name)) {
                ags.push_back(ag);
            }
            // Checks other validations if the Active Gift is not exclusive, moves on otherwise
            else if (!ag.exclusive && ag.reqComp == "") {
                bool properWpn = true;
                bool wpnReqs[5] = { ag.reqOHSw, ag.reqTHSw, ag.reqSpHalPol, ag.reqTHHam, ag.reqBayoRif };
                vector<int> wpnIndexes;
                for (int i = 0; i < 5; i++) {
                    if (wpnReqs[i]) {
                        wpnIndexes.push_back(i);
                    }
                }
                if (!wpnIndexes.empty()) {
                    properWpn = false;
                    for (int i : wpnIndexes) {
                        for (Weapon wpn : build.weapons) {
                            if (wpn.type == wpnTypes[i]) {
                                properWpn = true;
                                break;
                            }
                        }
                        if (properWpn) {
                            break;
                        }
                    }
                }
                if (properWpn) {
                    string reqs[6] = { ag.reqStr, ag.reqDex, ag.reqMnd, ag.reqWil, ag.reqVit, ag.reqFor };
                    string stats[6] = { build.strength, build.dexterity, build.mind, build.willpower, build.vitality, build.fortitude };
                    bool prof = true;

                    for (int i = 0; i < 6; i++) {
                        for (int j = 0; j < 14; j++) {
                            if (reqs[i] == "" || reqs[i] == "-" || reqs[i] == proficiency[j]) {
                                break;
                            }
                            else if (stats[i] == proficiency[j]) {
                                prof = false;
                                break;
                            }
                        }
                        if (!prof) {
                            break;
                        }
                    }
                    if (prof) {
                        ags.push_back(ag);
                    }
                }

            }
        }
        // Assigns 8 random ActiveGifts as the Build's Active Gifts
        srand(time(0));
        for (int i = 0; i < 8; i++) {
            int index = rand() % ags.size();
            build.activeGifts.push_back(ags[index]);
            ags.erase(ags.begin() + index);
            cout << "ACTIVE GIFT #" + to_string(i + 1) + " GENERATED\n";
            build.activeGifts[i].detailedOutput(wpnTypes);
            cout << endl;
        }
    }

    // Randomly generates the properties of the build and returns the build
    Build genBuild() {
        genBC();
        cout << endl;
        storeStats();
        genComp();
        cout << endl;
        genPasGift();
        bool buffed = passBuffStats();
        if (buffed) {
            cout << "\n";
        }
        genBV();
        cout << endl;
        genWP();
        genActGift();
        cout << endl;

        return build;
    }
};

//Generates a functional build with random properties in Code Vein
Build generateBuild() {
    RandomBuildGenerator gen; // creates a RandomBuildGenerator object
    Build build = gen.genBuild();
    return build;
} 

int main()
{
    Build build = generateBuild();
    cout << endl;
    build.output();
    return 0;
}