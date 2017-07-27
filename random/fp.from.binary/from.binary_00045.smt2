(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000001011011000000000001111))
;; x should be 2d800f

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x002D800F [Rational(2981903, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= y (fp #b0 #b00000000 #b01011011000000000001111))))
(check-sat)
(exit)
