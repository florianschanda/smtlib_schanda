(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4200724256534034140031508286483585834503173828125p-964 {+ 1891838019641288 -964 (9.10741e-291)}
; Y = 1.70039130423343198827978994813747704029083251953125p-732 {+ 3154282016759220 -732 (7.52648e-221)}
; 1.4200724256534034140031508286483585834503173828125p-964 > 1.70039130423343198827978994813747704029083251953125p-732 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111011 #b0110101110001001110111011101001000100001111111001000)))
(assert (= y (fp #b0 #b00100100011 #b1011001101001100110110000011001000010101110110110100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
