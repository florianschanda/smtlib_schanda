(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11000010 #b10010100111000111000110)))
;; x should be Float32(0xE14A71C6 [Rational(-233402533941312749568), -233402533941312749568.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1101110111110100011110000101001001101101100011001111100010100010))
;; z should be -2453203601589471070

(assert (not (= y z)))
(check-sat)
(exit)
