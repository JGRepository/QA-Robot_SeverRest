from jinja2 import Environment, FileSystemLoader
import os
# Configuração do Jinja2
env = Environment(loader=FileSystemLoader("."))

# Carrega o template
template = env.get_template("templates/robot-framework.yml.j2")

# Define as variáveis dinâmicas
config = {
    "test_path_web": "tests/serverestDev/e2e",
    "test_path_api": "API/serverestDev/tests"

}

# Renderiza o YAML final
pipeline_yaml = template.render(config)

# Define o novo diretório onde será salvo o YAML
output_dir = ".github/workflows"  # Novo local do arquivo
output_file = os.path.join(output_dir, "robot-pipeline.yml")

# Garante que o diretório existe
os.makedirs(output_dir, exist_ok=True)

# Escreve o arquivo YAML com codificação UTF-8 no novo local
with open(output_file, "w", encoding="utf-8") as f:
    f.write(pipeline_yaml)

print(f"✅ Pipeline YAML gerado com sucesso em: {output_file}")