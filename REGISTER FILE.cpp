#include <iostream>
#include <iomanip>
#include <array>
#include <random>

class RegisterFile {
private:
    std::array<int, 32> registers; // Array to store 32 registers

public:
    RegisterFile() {
        // Initialize registers to random values (for demonstration)
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_int_distribution<> dis(0, 100);

        for (int i = 0; i < 32; ++i) {
            registers[i] = dis(gen);
        }
    }

    void updateRegisters() {
        // Update register file content (for demonstration)
        std::cout << "Registers:\n";
        for (int i = 0; i < 32; ++i) {
            std::cout << "Reg" << std::dec << i << ": 0x" << std::hex << std::setw(2) << std::setfill('0') << registers[i] << '\n';
        }
    }
};

int main() {
    RegisterFile regFile;
    regFile.updateRegisters(); // Display register content (simulation)

    return 0;
}
