(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +subnormal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11001011110001111111000)))
;; x should be Float32(0x0065E3F8 [Rational(834687, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b00000000011001011110001111111000

(assert (not (= y #b00000000011001011110001111111000)))
(check-sat)
(exit)
