(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0D633A51)))
;; x should be Float32(0x0D633A51 [Rational(14891601, 21267647932558653966460912964485513216), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 3958866698291915131813175158059471815996388131.0 5653910607290829854666552002377339250647948470001980665989139844136383283200.0))))
;; w should be Float32(0x0D633A51 [Rational(14891601, 21267647932558653966460912964485513216), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
