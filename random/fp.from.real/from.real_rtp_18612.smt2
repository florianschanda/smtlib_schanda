(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b01000111 #b11000010110001010001000)))
;; x should be Float32(0xA3E16288 [Rational(-1846353, 75557863725914323419136), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 14770825367.0 604462909807314587353088000.0)))))
;; w should be Float32(0xA3E16289 [Rational(-14770825, 604462909807314587353088), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
