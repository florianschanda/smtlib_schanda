(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6357743619191875694696136633865535259246826171875p-442 {- 2863273179430968 -442 (-1.44034e-133)}
; Y = -1.8832868406093730140327124900068156421184539794921875p428 {- 3977970286229635 428 (-1.30543e+129)}
; -1.6357743619191875694696136633865535259246826171875p-442 = -1.8832868406093730140327124900068156421184539794921875p428 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001000101 #b1010001011000010000110111100110000010100000000111000)))
(assert (= y (fp #b1 #b10110101011 #b1110001000011111000101100001110101100111100010000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
