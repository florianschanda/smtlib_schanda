(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5400741750588402556587652725283987820148468017578125p-89 {+ 2432277853547421 -89 (2.48812e-027)}
; Y = 1.2943160347478406269061679267906583845615386962890625p-118 {+ 1325481584419537 -118 (3.89494e-036)}
; 1.5400741750588402556587652725283987820148468017578125p-89 < 1.2943160347478406269061679267906583845615386962890625p-118 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110100110 #b1000101001000010010011010001011101001010101110011101)))
(assert (= y (fp #b0 #b01110001001 #b0100101101011000010010111010111111101110001011010001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
