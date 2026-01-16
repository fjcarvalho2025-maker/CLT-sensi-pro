Map<String, int> calcularSensi({
  required int dpi,
  required double tela,
  required String estilo,
}) {
  int geral = 90;

  if (dpi > 450) geral -= 3;
  if (dpi < 400) geral += 3;

  if (tela < 6.4) geral += 2;
  if (tela > 6.7) geral -= 2;

  if (estilo == "Rush") geral += 2;
  if (estilo == "Preciso") geral -= 2;

  return {
    "Geral": geral,
    "Red Dot": geral - 4,
    "2x": geral - 14,
    "4x": geral - 24,
    "AWM": geral - 40,
    "Olhadinha": geral - 28,
  };
}
