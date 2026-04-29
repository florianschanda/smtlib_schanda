(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x236D9BF4)))
;; x should be Float32(0x236D9BF4 [Rational(3892989, 302231454903657293676544), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 2339314173.0 188894659314785808547840000.0))))
;; w should be Float32(0x236472DA [Rational(7485805, 604462909807314587353088), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
