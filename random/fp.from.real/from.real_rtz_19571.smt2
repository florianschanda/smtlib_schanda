(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00011010 #b00000000011011110100001)))
;; x should be Float32(0x8D0037A1 [Rational(-8402849, 21267647932558653966460912964485513216), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 2233860519441181966560743447272291846234700601.0 5653910607290829854666552002377339250647948470001980665989139844136383283200.0)))))
;; w should be Float32(0x8D0037A1 [Rational(-8402849, 21267647932558653966460912964485513216), -0.000000])

(assert (= x w))
(check-sat)
(exit)
