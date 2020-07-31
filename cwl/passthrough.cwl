cwlVersion: v1.0
class: ExpressionTool
id: passthrough
requirements:
  InlineJavascriptRequirement: {}

inputs:
    mapping_data: File

    unpaired_data: File

    conflict_data: File

    pairing_data: File

    tracker_data: File

    pickle_data: File

outputs:
    mapping_file: File

    unpaired_file: File

    conflict_file: File

    pairing_file: File

    tracker_file: File

    pickle_file: File

expression: |
    ${
        return {
            'mapping_file': inputs.mapping_data,
            'unpaired_file': inputs.unpaired_data,
            'conflict_file': inputs.conflict_data,
            'pairing_file': inputs.pairing_data,
            'tracker_file': inputs.tracker_data,
            'pickle_file': inputs.pickle_data
        };
    }
