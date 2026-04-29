(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b1 #b10110111 #b01101010000010010110011)))
;; x should be Float32(0xDBB504B3 [Rational(-101904275260571648), -101904275260571648.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11011011101101010000010010110011

(assert (= y #b11011011101101010000010010110011))
(check-sat)
(exit)
