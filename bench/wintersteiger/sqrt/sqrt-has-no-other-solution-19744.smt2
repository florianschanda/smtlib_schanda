(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.678717484280637162186167188338004052639007568359375p-207 {+ 3056671809296118 -207 (8.16147e-063)}
; 1.678717484280637162186167188338004052639007568359375p-207 S == 1.8323304747128108527221002077567391097545623779296875p-104
; [HW: 1.8323304747128108527221002077567391097545623779296875p-104] 

; mpf : + 3748483215765723 -104
; mpfd: + 3748483215765723 -104 (9.03409e-032) class: Pos. norm. non-zero
; hwf : + 3748483215765723 -104 (9.03409e-032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100110000 #b1010110111000000011011011101011000110101011011110110)))
(assert (= r (fp #b0 #b01110010111 #b1101010100010011100111000010100001011011000011011011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
