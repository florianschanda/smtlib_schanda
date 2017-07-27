(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11001010001011111110000000100010))
;; x should be ca2fe022

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xCA2FE022 [Rational(-5763089, 2), -2881544.500000])

(assert (not (= y (fp #b1 #b10010100 #b01011111110000000100010))))
(check-sat)
(exit)
