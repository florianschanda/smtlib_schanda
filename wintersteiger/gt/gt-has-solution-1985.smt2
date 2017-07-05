(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.332200175080576087793815531767904758453369140625p-721 {+ 1496096584705296 -721 (1.20765e-217)}
; Y = 1.5881758964444372406177308221231214702129364013671875p985 {+ 2648908748055475 985 (5.19331e+296)}
; 1.332200175080576087793815531767904758453369140625p-721 > 1.5881758964444372406177308221231214702129364013671875p985 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100101110 #b0101010100001011000100100001011110110010010100010000)))
(assert (= y (fp #b0 #b11111011000 #b1001011010010010101100100000111110000110001110110011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
