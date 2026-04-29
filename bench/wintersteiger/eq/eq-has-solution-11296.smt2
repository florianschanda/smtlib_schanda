(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8225544330753524757682271228986792266368865966796875p-329 {+ 3704455838290107 -329 (1.66653e-099)}
; Y = 1.1769026750134778946943470145924948155879974365234375p-117 {+ 796698821271543 -117 (7.08323e-036)}
; 1.8225544330753524757682271228986792266368865966796875p-329 = 1.1769026750134778946943470145924948155879974365234375p-117 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010110110 #b1101001010010010111011010110010100111101000010111011)))
(assert (= y (fp #b0 #b01110001010 #b0010110101001001011111100110001111000001111111110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
