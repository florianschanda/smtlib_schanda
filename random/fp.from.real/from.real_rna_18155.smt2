(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b11010011 #b00011111100011000100100)))
;; x should be Float32(0xE98FC624 [Rational(-21726510606410851909894144), -21726510606410851909894144.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 108632547806104622885343317.0 5.0)))))
;; w should be Float32(0xE98FC624 [Rational(-21726510606410851909894144), -21726510606410851909894144.000000])

(assert (not (= x w)))
(check-sat)
(exit)
