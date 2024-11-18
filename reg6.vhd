entity reg6 is
    Port (
        clk : in bit;                       -- Sinal de clock
        data_in : in bit_vector(5 downto 0); -- Entrada de 6 bits
        data_out : out bit_vector(5 downto 0) -- Saída de 6 bits
    );
end reg6;

architecture behav of reg6 is
    signal reg : bit_vector(5 downto 0) := (others => '0'); -- Registrador interno
begin
    process (clk)
    begin
        if clk'event and clk='1' then
            reg <= data_in; -- Carregar o valor de entrada
        end if;
    end process;

    data_out <= reg; -- Atribuir o valor do registrador à saída
end behav;
