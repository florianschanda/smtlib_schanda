(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.884505480510294983531593970838002860546112060546875p940 {+ 3983458552433326 940 (1.75143e+283)}
; 1.884505480510294983531593970838002860546112060546875p940 S == 1.3727729165853670423302901326678693294525146484375p470
; [HW: 1.3727729165853670423302901326678693294525146484375p470] 

; mpf : + 1678819968227672 470
; mpfd: + 1678819968227672 470 (4.18501e+141) class: Pos. norm. non-zero
; hwf : + 1678819968227672 470 (4.18501e+141) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101011 #b1110001001101110111100110111111111101100101010101110)))
(assert (= r (fp #b0 #b10111010101 #b0101111101101110000010111011110110010001100101011000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
