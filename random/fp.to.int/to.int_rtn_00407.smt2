(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49D8C78C)))
;; x should be Float32(0x49D8C78C [Rational(3551715, 2), 1775857.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 1775857

(declare-const z Int)
(assert (= z 1775857))
(assert (= y z))
