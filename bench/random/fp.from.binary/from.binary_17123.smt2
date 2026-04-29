(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000001110100100101111001001))
;; x should be 3a4bc9

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x003A4BC9 [Rational(3820489, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= y (fp #b0 #b00000000 #b01110100100101111001001))))
(check-sat)
(exit)
