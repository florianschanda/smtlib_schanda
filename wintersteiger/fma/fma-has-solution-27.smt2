(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9156679872197417413559605847694911062717437744140625p629 {- 4123802006037921 629 (-4.26764e+189)}
; Y = -1.284683984874273487974960517021827399730682373046875p449 {- 1282102688198126 449 (-1.86752e+135)}
; Z = -1.27481742360298966332265990786254405975341796875p-909 {- 1237667646533344 -909 (-2.94566e-274)}
; -1.9156679872197417413559605847694911062717437744140625p629 x -1.284683984874273487974960517021827399730682373046875p449 -1.27481742360298966332265990786254405975341796875p-909 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001110100 #b1110101001101001001101111001101100011010010110100001)))
(assert (= y (fp #b1 #b10111000000 #b0100100011100001000011001011010010111010110111101110)))
(assert (= z (fp #b1 #b00001110010 #b0100011001011010011011110100011010111110111011100000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
