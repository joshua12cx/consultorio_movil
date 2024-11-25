class ApiResponseDTO<T> {
  final bool success;
  final String message;
  final T data;

  ApiResponseDTO({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ApiResponseDTO.fromJson(Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJsonT) {
    return ApiResponseDTO<T>(
      success: json['success'],
      message: json['message'],
      data: fromJsonT(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'data': data,
    };
  }
}
