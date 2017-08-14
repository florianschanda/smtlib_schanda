(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000010101001100100010101111))
;; x should be 54c8af

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x0054C8AF [Rational(5556399, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= y (fp #b0 #b00000000 #b10101001100100010101111))))
(check-sat)
(exit)
