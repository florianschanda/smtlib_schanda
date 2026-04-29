(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11101001 #b10011011011111100010100)))
;; x should be Float32(0x74CDBF14 [Rational(130407273046531667259091496992768), 130407273046531667259091496992768.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (not (= y z)))
(check-sat)
(exit)
