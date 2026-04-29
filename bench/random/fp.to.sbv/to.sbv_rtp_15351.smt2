(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF0AD25A)))
;; x should be Float32(0xFF0AD25A [Rational(-184525671175475032913054933800439513088), -184525671175475032913054933800439513088.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0011001011001110010001101001000000000100001101111000101111011100))
;; z should be 3660941131458776028

(assert (not (= y z)))
(check-sat)
(exit)
