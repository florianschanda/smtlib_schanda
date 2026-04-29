(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA834BBA0)))
;; x should be Float32(0xA834BBA0 [Rational(-370141, 36893488147419103232), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 2368902683.0 236118324143482260684800.0)))))
;; w should be Float32(0xA834BBA1 [Rational(-11844513, 1180591620717411303424), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
