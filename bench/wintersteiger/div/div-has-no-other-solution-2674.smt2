(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5639149090476702763652383509906940162181854248046875p714 {+ 2539646974255755 714 (1.34781e+215)}
; Y = 1.2496188365020868271670906324288807809352874755859375p-998 {+ 1124183299055455 -998 (4.6649e-301)}
; 1.5639149090476702763652383509906940162181854248046875p714 / 1.2496188365020868271670906324288807809352874755859375p-998 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001001 #b1001000001011100101110100011110000010110001010001011)))
(assert (= y (fp #b0 #b00000011001 #b0011111111100111000001010010001100111101111101011111)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
