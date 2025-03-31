function fn() {
  return {
    driver: {
      type: 'chromedriver',
      executable: 'chromedriver', // ou o caminho correto do chromedriver se necessário
      headless: true, // Garante que o navegador será iniciado em modo headless
      chromeOptions: {
        args: [
          '--headless', // Modo sem interface gráfica
          '--disable-gpu', // Desabilita aceleração gráfica
          '--window-size=1280x1024', // Tamanho da janela para evitar erros relacionados ao layout
          '--no-sandbox' // Necessário para alguns ambientes (como contêineres Docker)
        ]
      }
    }
  };
}
