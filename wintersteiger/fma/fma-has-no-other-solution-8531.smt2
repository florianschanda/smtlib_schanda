(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9526472382801782767813847385696135461330413818359375p1022 {- 4290341747334143 1022 (-8.77565e+307)}
; Y = 1.7617743993199710406116764715989120304584503173828125p855 {+ 3430726900917805 855 (4.2325e+257)}
; Z = -1.96389833428353721700432288344018161296844482421875p-103 {- 4341012179102380 -103 (-1.93655e-031)}
; -1.9526472382801782767813847385696135461330413818359375p1022 x 1.7617743993199710406116764715989120304584503173828125p855 -1.96389833428353721700432288344018161296844482421875p-103 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111111101 #b1111001111100000101100000111110100001001101111111111)))
(assert (= y (fp #b0 #b11101010110 #b1100001100000011101001011010010000000010011000101101)))
(assert (= z (fp #b1 #b01110011000 #b1111011011000010000010101000111001101010101010101100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
