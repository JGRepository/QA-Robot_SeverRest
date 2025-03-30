from jinja2 import Environment, FileSystemLoader

# Configuração do Jinja2
env = Environment(loader=FileSystemLoader("."))

# Carrega o template
template = env.get_template("robot-pipeline.yml.j2")

# Define as variáveis dinâmicas
config = {
    "headless": "true",  
    "test_path_web": "tests/serverestDev/e2e/tests_e2e.robot",
    "test_path_api": "API/serverestDev/tests/cadastro_usuario_api_tests.robot",
    "output_chrome": "results/web/chrome",
    "output_edge": "results/web/edge",
    "output_firefox": "results/web/firefox"
}

# Renderiza o YAML final
pipeline_yaml = template.render(config)

# Salva o arquivo gerado
with open("robot-pipeline.yml", "w") as f:
    f.write(pipeline_yaml)

print("Pipeline YAML gerado com sucesso!")
