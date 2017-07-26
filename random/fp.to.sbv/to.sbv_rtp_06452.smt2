(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +subnormal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x003BDFD2)))
;; x should be Float32(0x003BDFD2 [Rational(1961961, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000001))
;; z should be 1

(assert (= y z))
(check-sat)
(exit)
