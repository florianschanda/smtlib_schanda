(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x480E5A38)))
;; x should be Float32(0x480E5A38 [Rational(1166151, 8), 145768.875000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 145769

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000100011100101101001))
;; z should be 145769

(assert (= y z))
(check-sat)
(exit)
