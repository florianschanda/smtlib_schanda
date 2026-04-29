(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.581157159150528013213943268056027591228485107421875p417 {+ 2617299165394014 417 (5.35159e+125)}
; Y = 1.0286632632306436097024970877100713551044464111328125p-65 {+ 129087861604749 -65 (2.7882e-020)}
; 1.581157159150528013213943268056027591228485107421875p417 < 1.0286632632306436097024970877100713551044464111328125p-65 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110100000 #b1001010011000110101101110011000001100011010001011110)))
(assert (= y (fp #b0 #b01110111110 #b0000011101010110011110011100001000101100000110001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
