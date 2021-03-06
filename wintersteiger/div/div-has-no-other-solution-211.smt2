(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2510968553848129669603395086596719920635223388671875p-203 {- 1130839704344947 -203 (-9.73199e-062)}
; Y = 1.5117193242411077758191595421521924436092376708984375p884 {+ 2304578957970535 884 (1.94979e+266)}
; -1.2510968553848129669603395086596719920635223388671875p-203 / 1.5117193242411077758191595421521924436092376708984375p884 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100110100 #b0100000001000111111000100010111000000001100101110011)))
(assert (= y (fp #b0 #b11101110011 #b1000001100000000000010011010001001011000110001100111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
