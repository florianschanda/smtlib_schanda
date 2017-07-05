(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4570405761039804115597462441655807197093963623046875p859 {+ 2058327768235083 859 (5.60064e+258)}
; Y = 1.3217156337671227550600860922713764011859893798828125p-1022 {+ 1448878408352877 -1022 (2.94091e-308)}
; 1.4570405761039804115597462441655807197093963623046875p859 = 1.3217156337671227550600860922713764011859893798828125p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101011010 #b0111010100000000100111000111011101001111110001001011)))
(assert (= y (fp #b0 #b00000000001 #b0101001001011011111101001010110110100100010001101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
