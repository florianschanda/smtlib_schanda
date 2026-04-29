(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA3E5456)))
;; x should be Float32(0xCA3E5456 [Rational(-6236715, 2), -3118357.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 12772793329.0 4096.0)))))
;; w should be Float32(0xCA3E5457 [Rational(-12473431, 4), -3118357.750000])

(assert (not (distinct x w)))
(check-sat)
(exit)
