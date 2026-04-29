(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.24220025314910031966064707376062870025634765625p-186 {+ 1090772969831328 -186 (1.26652e-056)}
; Y = 1.368498583459402340167798683978617191314697265625p-116 {+ 1659570083154320 -116 (1.64727e-035)}
; 1.24220025314910031966064707376062870025634765625p-186 = 1.368498583459402340167798683978617191314697265625p-116 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000101 #b0011111000000000110101011111011001011011101110100000)))
(assert (= y (fp #b0 #b01110001011 #b0101111001010101111011000101010010010100100110010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
