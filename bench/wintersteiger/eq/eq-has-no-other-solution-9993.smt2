(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2103515960183692801166444041882641613483428955078125p331 {- 947339369445117 331 (-5.29468e+099)}
; Y = 1.9359721692185780650419246740057133138179779052734375p-746 {+ 4215243912521943 -746 (5.23025e-225)}
; -1.2103515960183692801166444041882641613483428955078125p331 = 1.9359721692185780650419246740057133138179779052734375p-746 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101001010 #b0011010111011001100110100010100110001111011011111101)))
(assert (= y (fp #b0 #b00100010101 #b1110111110011011110111110100000011000010100011010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
