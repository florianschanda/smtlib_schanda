(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4EE7464E)))
;; x should be Float32(0x4EE7464E [Rational(1940072192), 1940072192.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 1940072192

(declare-const z (_ BitVec 32))
(assert (= z #b01110011101000110010011100000000))
;; z should be 1940072192

(assert (not (= y z)))
(check-sat)
(exit)
