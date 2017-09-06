(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTP +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0DD30D1C)))
;; x should be Float32(0x0DD30D1C [Rational(3457863, 2658455991569831745807614120560689152), 0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 1

(declare-const z Int)
(assert (= z 1))
(assert (= y z))
