#include "Instruccion.cpp"
#include "Control.cpp"
#include "Registro.cpp"

class Procesador
{
	public:
		Procesador();
		~Procesador();
		int readFile_Mips(string nfile);
		int readFile_lineasC(string nfile);
		void showContent_Registros();
		int buscarRegistro(string r);
		int add(int,int);
		int sub(int,int);
		int mul(int,int);
		int div(int,int);
		int addi(int,int);
		int subi(int,int);
		void lw(string,int);
		void sw(string,int);
		bool beq(int,int);
		void j(string);
		void compilar();
		void ejecutarInstruccion(int);
		void compareControlSign(int);
		bool exitFile(string);
		bool searchError(int);
		static const string regs[32];
		static const string operaciones[11];
	private:
		int cnt;
		int cnt_lineas_control;
		int controlSignal;
		int PC;
		int LC;
		Instruccion inst_mips[1000];
		Control inst_lineas_control[1000];
		Control lines_control_sign[1000];
		Registro registros[32];
		Registro stackPointer[1000];
};
