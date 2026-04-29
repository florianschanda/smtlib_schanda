(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10001011110110110100100011011010))
;; x should be 8bdb48da

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x8BDB48DA [Rational(-7185517, 85070591730234615865843651857942052864), -0.000000])

(assert (= y (fp #b1 #b00010111 #b10110110100100011011010)))
(check-sat)
(exit)
