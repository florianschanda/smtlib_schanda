(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA4A35D17)))
;; x should be Float32(0xA4A35D17 [Rational(-10706199, 151115727451828646838272), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 34665868951.0 755578637259143234191360000.0))))
;; w should be Float32(0x2453956C [Rational(3466587, 75557863725914323419136), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
