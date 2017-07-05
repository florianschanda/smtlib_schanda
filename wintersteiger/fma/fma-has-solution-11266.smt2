(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.074804154139744838403203175403177738189697265625p267 {+ 336887960709520 267 (2.54881e+080)}
; Y = 1.376793888229413287405122900963760912418365478515625p-200 {+ 1696928814625466 -200 (8.56781e-061)}
; Z = 1.0258336360241673279602991897263564169406890869140625p83 {+ 116344353572065 83 (9.92125e+024)}
; 1.074804154139744838403203175403177738189697265625p267 x 1.376793888229413287405122900963760912418365478515625p-200 1.0258336360241673279602991897263564169406890869140625p83 == 1.02585621573288410246505009126849472522735595703125p83
; [HW: 1.02585621573288410246505009126849472522735595703125p83] 

; mpf : + 116446043539828 83
; mpfd: + 116446043539828 83 (9.92147e+024) class: Pos. norm. non-zero
; hwf : + 116446043539828 83 (9.92147e+024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001010 #b0001001100100110010111010111001110100010100110010000)))
(assert (= y (fp #b0 #b01100110111 #b0110000001110101100100000111001101000111001010111010)))
(assert (= z (fp #b0 #b10001010010 #b0000011010011101000010000111110111011100010011100001)))
(assert (= r (fp #b0 #b10001010010 #b0000011010011110100000110101000011111000100101110100)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
