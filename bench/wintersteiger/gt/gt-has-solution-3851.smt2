(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.82408960535710296113620643154717981815338134765625p-805 {+ 3711369639606148 -805 (8.54869e-243)}
; Y = -1.1607856269348786337758383524487726390361785888671875p883 {- 724114089550451 883 (-7.4858e+265)}
; 1.82408960535710296113620643154717981815338134765625p-805 > -1.1607856269348786337758383524487726390361785888671875p883 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011010 #b1101001011110111100010010100111111111011011110000100)))
(assert (= y (fp #b1 #b11101110010 #b0010100100101001001111110011000101011010001001110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
