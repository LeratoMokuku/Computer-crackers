#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <unordered_map>
#include <iomanip>

class Instruction {
public:
    std::string opcode;
    std::vector<std::string> operands;

    Instruction(const std::string& opcode, const std::vector<std::string>& operands) :
        opcode(opcode), operands(operands) {}
};

class Assembler {
public:
    void displayMenu() {
        int choice;
        do {
            std::cout << "\nMenu:\n";
            std::cout << "1. Load MIPS assembly program\n";
            std::cout << "2. Translate to machine code (Binary)\n";
            std::cout << "3. Exit\n";
            std::cout << "Enter your choice: ";
            std::cin >> choice;

            switch (choice) {
                case 1:
                    loadProgram();
                    break;
                case 2:
                    translateToMachineCode();
                    break;
                case 3:
                    std::cout << "Exiting...\n";
                    break;
                default:
                    std::cout << "Invalid choice. Please enter a valid option.\n";
                    break;
            }
        } while (choice != 3);
    }

    void loadProgram() {
        std::string filename;
        std::cout << "Enter the filename of the MIPS assembly program: ";
        std::cin >> filename;

        std::ifstream file(filename);
        if (!file.is_open()) {
            std::cerr << "Error opening file: " << filename << std::endl;
            return;
        }

        std::string line;
        while (std::getline(file, line)) {
            instructions.push_back(parseInstruction(line));
        }
        file.close();
        std::cout << "MIPS assembly program loaded successfully.\n";
    }

    void translateToMachineCode() {
        if (instructions.empty()) {
            std::cout << "No program loaded. Load a MIPS assembly program first.\n";
            return;
        }

        std::cout << "Machine Code (Binary):\n";
        for (const auto& instruction : instructions) {
            std::string translatedInstruction = translateInstruction(instruction);
            std::cout << translatedInstruction << std::endl;
        }
    }

private:
    std::vector<Instruction> instructions;

    Instruction parseInstruction(const std::string& line) {
        std::istringstream ss(line);
        std::string opcode;
        std::vector<std::string> operands;
        if (std::getline(ss, opcode, ' ')) {
            std::string operand;
            while (std::getline(ss, operand, ',')) {
                operands.push_back(operand);
            }
        }
        return Instruction(opcode, operands);
    }

    std::string translateInstruction(const Instruction& instruction) {
        std::unordered_map<std::string, std::string> opcodeToBinary = {
            {"ADD", "001000"},
            {"SUB", "001001"},
            {"MULT", "001010"},
            {"DIV", "001100"},
            {"LW", "001101"},
            {"C.LT.D", "001110"},
            {"BLT", "001111"},
            {"J", "010000"},
            {"B", "010001"},
            {"BEQ", "010010"},
            // Add more opcodes as needed
        };

        std::string machineCode = opcodeToBinary[instruction.opcode];

        for (const auto& operand : instruction.operands) {
            std::string binaryRegister = getBinaryRegister(operand);
            machineCode += binaryRegister;
        }

        return machineCode;
    }

    std::string getBinaryRegister(const std::string& reg) {
        std::unordered_map<std::string, std::string> registerAddresses = {
    {"$zero", "00000"},
    {"$at",   "00001"},
    {"$v0",   "00010"},
    {"$v1",   "00011"},
    {"$a0",   "00100"},
    {"$a1",   "00101"},
    {"$a2",   "00110"},
    {"$a3",   "00111"},
    {"$t0",   "01000"},
    {"$t1",   "01001"},
    {"$t2",   "01010"},
    {"$t3",   "01011"},
    {"$t4",   "01100"},
    {"$t5",   "01101"},
    {"$t6",   "01110"},
    {"$t7",   "01111"},
    {"$s0",   "10000"},
    {"$s1",   "10001"},
    {"$s2",   "10010"},
    {"$s3",   "10011"},
    {"$s4",   "10100"},
    {"$s5",   "10101"},
    {"$s6",   "10110"},
    {"$s7",   "10111"},
    {"$t8",   "11000"},
    {"$t9",   "11001"},
    {"$k0",   "11010"},
    {"$k1",   "11011"},
    {"$gp",   "11100"},
    {"$sp",   "11101"},
    {"$fp",   "11110"},
    {"$ra",   "11111"},
};

        

        if (registerAddresses.find(reg) != registerAddresses.end()) {
            return registerAddresses[reg];
        } else {
            // Handle cases where register is not found (you can add custom logic here)
            std::cerr << "Register not found: " << reg << std::endl;
            return "00000"; // Defaulting to $zero register
        }
    }
};

int main() {
    Assembler assembler;
    assembler.displayMenu();
    return 0;
}
