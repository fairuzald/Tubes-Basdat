def combine_sql_files(files_list, output_file):
    try:
        with open(output_file, 'w') as outfile:
            for file_name in files_list:
                with open(file_name, 'r') as infile:
                    outfile.write(infile.read() + '\n\n')
        print(f"File {output_file} berhasil dibuat dengan sukses!")
    except Exception as e:
        print(f"Terjadi kesalahan: {e}")

# Daftar file SQL yang akan digabungkan
files_to_combine = [
    'constraint/database.sql',
    'constraint/feature.sql',
    'constraint/message.sql',
    'constraint/relation.sql',
    'constraint/transition.sql'
]

# Nama file output
output_file_name = 'migrate2.sql'

# Panggil fungsi untuk menggabungkan file-file SQL
combine_sql_files(files_to_combine, output_file_name)
