(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01100100111110100011011)))
;; x should be Float32(0xCAB27D1B [Rational(-11697435, 2), -5848717.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 52014975.0 16.0))))
;; w should be Float32(0x4A466BDF [Rational(13003743, 4), 3250935.750000])

(assert (distinct x w))
(check-sat)
(exit)
