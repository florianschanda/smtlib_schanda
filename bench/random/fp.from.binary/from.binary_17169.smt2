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
(assert (= x #b11011011101101010000010010110011))
;; x should be dbb504b3

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xDBB504B3 [Rational(-101904275260571648), -101904275260571648.000000])

(assert (= y (fp #b1 #b10110111 #b01101010000010010110011)))
(check-sat)
(exit)
