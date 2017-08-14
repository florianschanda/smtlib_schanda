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
(assert (= x #b10110010110001101011100001110100))
;; x should be b2c6b874

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xB2C6B874 [Rational(-3255837, 140737488355328), -0.000000])

(assert (= y (fp #b1 #b01100101 #b10001101011100001110100)))
(check-sat)
(exit)
