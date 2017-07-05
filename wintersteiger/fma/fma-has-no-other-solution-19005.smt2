(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2649909268998114075799321653903461992740631103515625p956 {- 1193413039642553 956 (-7.70483e+287)}
; Y = -1.8349316038896079650299952845671214163303375244140625p-435 {- 3760197660157089 -435 (-2.0681e-131)}
; Z = 1.623309174778504893055242064292542636394500732421875p-728 {+ 2807134967269086 -728 (1.14965e-219)}
; -1.2649909268998114075799321653903461992740631103515625p956 x -1.8349316038896079650299952845671214163303375244140625p-435 1.623309174778504893055242064292542636394500732421875p-728 == 1.160585915201036488753061348688788712024688720703125p522
; [HW: 1.160585915201036488753061348688788712024688720703125p522] 

; mpf : + 723214667860338 522
; mpfd: + 723214667860338 522 (1.59344e+157) class: Pos. norm. non-zero
; hwf : + 723214667860338 522 (1.59344e+157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111011 #b0100001111010110011100100000010011000101011110111001)))
(assert (= y (fp #b1 #b01001001100 #b1101010110111110000100111101110100011010010010100001)))
(assert (= z (fp #b0 #b00100100111 #b1001111110010001001100001010100011111000011011011110)))
(assert (= r (fp #b0 #b11000001001 #b0010100100011100001010001001010111111100100101110010)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
