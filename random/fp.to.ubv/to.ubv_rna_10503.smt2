(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x44DDA472)))
;; x should be Float32(0x44DDA472 [Rational(7262777, 4096), 1773.138916])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 1773

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000011011101101))
;; z should be 1773

(assert (not (= y z)))
(check-sat)
(exit)
