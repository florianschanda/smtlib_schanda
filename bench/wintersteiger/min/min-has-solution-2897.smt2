(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.1746154122185343826600956163019873201847076416015625p-478 {- 786397905400537 -478 (-1.50507e-144)}
; -oo m -1.1746154122185343826600956163019873201847076416015625p-478 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b01000100001 #b0010110010110011100110000111110011011011001011011001)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
