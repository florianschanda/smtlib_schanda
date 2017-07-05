(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3745567598002839115878259690362028777599334716796875p-865 {+ 1686853683865659 -865 (5.58749e-261)}
; 1.3745567598002839115878259690362028777599334716796875p-865 S == 1.6580450897368768092832169713801704347133636474609375p-433
; [HW: 1.6580450897368768092832169713801704347133636474609375p-433] 

; mpf : + 2963571620931983 -433
; mpfd: + 2963571620931983 -433 (7.47495e-131) class: Pos. norm. non-zero
; hwf : + 2963571620931983 -433 (7.47495e-131) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010011110 #b0101111111100010111100111010100111010110100000111011)))
(assert (= r (fp #b0 #b01001001110 #b1010100001110101101001001001101110110110100110001111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
