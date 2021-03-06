(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFB5075BB)))
;; x should be Float32(0xFB5075BB [Rational(-1082385604165261559605075057596956672), -1082385604165261559605075057596956672.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1001110111000010011011110011100001001000110010011111011111010111))
;; z should be 11367770696966600663

(assert (not (= y z)))
(check-sat)
(exit)
